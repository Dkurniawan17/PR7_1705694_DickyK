<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Data extends CI_Model{
  function tampil_data($table)
  {
    $this->db->select("*");
    $this->db->from($table);
    $hasil=$this->db->get();
    return $hasil;
	}

  function left_join()
  {
    $this->db->select("l.kd_kereta, l.nama_kereta, k.kd_kursi");
    $this->db->from("lokomotif l");
    $this->db->join('kursi k', 'k.kd_kereta = l.kd_kereta', 'left');
    $hasil=$this->db->get();
    if($hasil->num_rows() > 0)
    {
      foreach ($hasil->result() as $data) {
        $hasilKursi[] = $data;
    }
    return $hasilKursi;
  }
}

function right_join()
{
  $this->db->select("g.kd_gerbong, g.nama_gerbong, k.kd_kursi");
  $this->db->from("kursi k");
  $this->db->join('gerbong g', 'k.kd_gerbong = g.kd_gerbong', 'right');
  $hasil=$this->db->get();
  if($hasil->num_rows() > 0)
  {
    foreach ($hasil->result() as $data)
    {
      $hasilKursi[] = $data;
    }
  return $hasilKursi;
  }
}

function inner_join()
{
  $this->db->select("l.kd_kereta, l.nama_kereta, g.kd_gerbong, g.nama_gerbong,  k.kd_kursi");
  $this->db->from("lokomotif l");
  $this->db->join('gerbong g', 'g.kd_kereta = l.kd_kereta', 'inner');
  $this->db->join('kursi k', 'k.kd_kereta = l.kd_kereta', 'inner');
  $hasil = $this->db->get();
  return $hasil;
}

	function input_data($data,$table){
		$this->db->insert($table,$data);
	}

  function hapus_data($where,$table){
	$this->db->where($where);
	$this->db->delete($table);
  }

  function edit_data($where,$table){
	return $this->db->get_where($table,$where);
}
function update_data($where,$data,$table){
		$this->db->where($where);
		$this->db->update($table,$data);
	}
}
