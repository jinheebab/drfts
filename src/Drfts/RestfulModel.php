<?php

namespace Drfts;

trait RestfulModel {

	public static function route($endpoint, $app) {
		$app->group($endpoint, function() use ($app) {
			// delete
			$app->delete('/{instance_id}', self.':delete');
			$app->post('/{instance_id}/delete' self.':delete');

			// update
			$app->map(['POST','PATCH','PUT'], self.':update');

			// show
			$app->get('/{instance_id}', self.':show');

			// index; POST for search
			$app->map(['GET','POST'], '/', self.':index');
		});
	}

	public function index($request, $response, $args) {
		$instance = self::find($args['instance_id']);

		if(!$instance)
			return $response->withStatus(404);
	}

	public function show($request, $response, $args) {

	}

	public function update($request, $response, $args) {

	}

	public function delete($request, $response, $args) {

	}
}